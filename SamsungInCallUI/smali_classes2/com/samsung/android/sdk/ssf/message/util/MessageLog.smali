.class public Lcom/samsung/android/sdk/ssf/message/util/MessageLog;
.super Ljava/lang/Object;


# static fields
.field private static SUB_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MessageLog"

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->SUB_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->SUB_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final e(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->SUB_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->SUB_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final setSubTag(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->SUB_TAG:Ljava/lang/String;

    return-void
.end method
