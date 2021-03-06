.class public Lcom/android/internal/os/InstallerConnection;
.super Ljava/lang/Object;
.source "InstallerConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/InstallerConnection$InstallerException;
    }
.end annotation


# static fields
.field private static final LOCAL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InstallerConnection"


# instance fields
.field private final buf:[B

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    return-void
.end method

.method private connect()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_0

    return v4

    :cond_0
    const-string/jumbo v2, "InstallerConnection"

    const-string/jumbo v3, "connecting..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "installd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    const/4 v2, 0x0

    return v2
.end method

.method private readFully([BI)Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, p2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "InstallerConnection"

    const-string/jumbo v2, "read exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    return v3
.end method

.method private readReply()I
    .locals 5

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->readFully([BI)Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int v0, v1, v2

    if-lt v0, v3, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    :cond_1
    const-string/jumbo v1, "InstallerConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid reply length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    return v4

    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    invoke-direct {p0, v1, v0}, Lcom/android/internal/os/InstallerConnection;->readFully([BI)Z

    move-result v1

    if-nez v1, :cond_3

    return v4

    :cond_3
    return v0
.end method

.method private safeParseBooleanResult([Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/android/internal/os/InstallerConnection$InstallerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid size result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/InstallerConnection$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    aget-object v0, p1, v2

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, p1, v2

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    aget-object v0, p1, v2

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    new-instance v0, Lcom/android/internal/os/InstallerConnection$InstallerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid boolean result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/InstallerConnection$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeCommand(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    if-lt v2, v8, :cond_0

    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    array-length v3, v3

    if-le v2, v3, :cond_1

    :cond_0
    return v7

    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :catch_0
    move-exception v1

    const-string/jumbo v3, "InstallerConnection"

    const-string/jumbo v4, "write error"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    return v7
.end method


# virtual methods
.method public dexopt(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    const-string/jumbo v3, "*"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    const-string/jumbo v0, "dexopt"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aput-object p6, v1, v2

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x7

    aput-object p8, v1, v2

    const/16 v2, 0x8

    aput-object p9, v1, v2

    const/16 v2, 0x9

    aput-object p10, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    return-void
.end method

.method public disconnect()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "InstallerConnection"

    const-string/jumbo v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    return-void
.end method

.method public dumpProfiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    const-string/jumbo v1, "dump_profiles"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/InstallerConnection;->safeParseBooleanResult([Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    const/16 v11, 0x20

    const/4 v10, -0x1

    const/4 v7, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, p2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_4

    aget-object v0, p2, v6

    if-nez v0, :cond_1

    const-string/jumbo v2, ""

    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v9, v10, :cond_0

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v10, :cond_2

    :cond_0
    new-instance v6, Lcom/android/internal/os/InstallerConnection$InstallerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid argument while executing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/os/InstallerConnection$InstallerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string/jumbo v9, "!"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string/jumbo v2, "!"

    :cond_3
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/os/InstallerConnection;->transact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_2
    if-eqz v4, :cond_5

    new-instance v6, Lcom/android/internal/os/InstallerConnection$InstallerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to execute "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/os/InstallerConnection$InstallerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    return-object v5

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public mergeProfiles(ILjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    const-string/jumbo v1, "merge_profiles"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/InstallerConnection;->safeParseBooleanResult([Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mWarnIfHeld:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mWarnIfHeld:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized transact(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mWarnIfHeld:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "InstallerConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Calling thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is holding 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/InstallerConnection;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;->connect()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "InstallerConnection"

    const-string/jumbo v3, "connection failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/os/InstallerConnection;->writeCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "InstallerConnection"

    const-string/jumbo v3, "write command failed? reconnect!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;->connect()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/os/InstallerConnection;->writeCommand(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;->readReply()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_2
    const-string/jumbo v2, "-1"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_4
    :try_start_3
    const-string/jumbo v2, "-1"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public waitForConnection()V
    .locals 4

    :goto_0
    :try_start_0
    const-string/jumbo v1, "ping"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "InstallerConnection"

    const-string/jumbo v2, "installd not ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
