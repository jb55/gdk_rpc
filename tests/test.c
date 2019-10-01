
#include <assert.h>
#include <stdio.h>
#include "gdk_rpc.h"

static int usage()
{
    printf("usage: test <tor uri> <rpcuser> <rpcpass>\n");
    return 1;
}

const char *read_file(const char *filename, size_t *length)
{
    FILE *f = fopen(filename, "r");
    char *buffer;

    if (!f) {
        fprintf(stderr, "Unable to open %s for reading\n", filename);
        return NULL;
    }

    fseek(f, 0, SEEK_END);
    *length = (size_t)ftell(f);
    fseek(f, 0, SEEK_SET);

    buffer = malloc(*length+1);
    *length = fread(buffer, 1, *length, f);
    fclose(f);

    buffer[*length] = 0;

    return buffer;
}

int main(int argc, char *argv[])
{
    (void)argc;
    (void)argv;

    char buffer[2048];
    GDKRPC_session *session;
    GDKRPC_json *network;
    GDKRPC_json *networks;
    char *str;
    int ret;
    size_t len;

    sprintf(buffer, "%s/%s/%s", basename(argv[0]), "test", "network.json");
    printf("reading %s...\n", buffer);
    const char *network_json_str = read_file(buffer, &len);

    GDKRPC_create_session(&session);
    GDKRPC_convert_string_to_json(network_json_str, &network);
    ret = GDKRPC_connect(session, network);
    printf("connect ret %d\n", ret);
    GDKRPC_destroy_json(network);

    GDKRPC_get_networks(&networks);
    GDKRPC_convert_json_to_string(networks, &str);
    GDKRPC_destroy_json(networks);

    printf("%s\n", str);
    GDKRPC_destroy_string(str);
    GDKRPC_destroy_session(session);

    return 0;
}


