.class public final Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;
.super Ljava/lang/Object;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.coreapps.rshare.quota"

.field public static final BYTE_SENDING:Ljava/lang/String; = "byte_sending"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BYTE_USAGE:Ljava/lang/String; = "byte_usage"

.field public static final CALL_METHOD_GET_QUOTA:Ljava/lang/String; = "GET_quota"

.field public static final CALL_METHOD_PUT_QUOTA:Ljava/lang/String; = "PUT_quota"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final LAST_RESET_TIME:Ljava/lang/String; = "last_reset_time"

.field public static final QUOTA:Ljava/lang/String; = "quota"

.field private static final TAG:Ljava/lang/String;

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final UPLOADED_FILE_COUNT:Ljava/lang/String; = "uploaded_file_count"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->TAG:Ljava/lang/String;

    const-string v0, "content://com.samsung.android.coreapps.rshare.quota"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final get()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRQuotaDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->get()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 8

    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "byte_usage"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "quota"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRQuotaDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->putQuota(Ljava/lang/Long;Ljava/lang/Long;)Z

    goto :goto_0
.end method

.method public static putQuota(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    div-long/2addr v2, v4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const-string v4, "last_reset_time"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "byte_usage"

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "quota"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    const-string v0, "timestamp"

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRQuotaDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->put(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static resetDb()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRQuotaDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
