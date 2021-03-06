.class public Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;
.super Landroid/app/Service;
.source "ITotalDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field private mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

.field stub:Lcom/samsung/android/trafficmanager/ITotalData$Stub;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->getSubId()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->updateRealPolicy(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;)J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->getTotalUsedData()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mTelManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->stub:Lcom/samsung/android/trafficmanager/ITotalData$Stub;

    return-void
.end method

.method private getSubId()I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummary;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    const-string/jumbo v1, "ITotalDataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSubId subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getTotalUsedData()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getUsedTrafficBytes()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private updateRealPolicy(I)I
    .locals 24

    const-string/jumbo v19, "ITotalDataService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "real updatePolicy() subId: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    const/16 v17, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "set_data_limit"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "max"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v19, "max"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "set_data_limit"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    :cond_0
    :goto_0
    const-string/jumbo v18, "off"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "data_warning_set"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "off"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "off"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "data_warning_set"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    :cond_1
    :goto_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "restrict_data_check_box"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "restrict_data_check_box"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    if-nez v19, :cond_6

    const/4 v14, 0x0

    :cond_2
    :goto_2
    const/16 v16, 0x1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "set_package_start_date_value"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "set_package_start_date_value"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v16

    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "switch_traffic_settings"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "switch_traffic_settings"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    if-nez v19, :cond_7

    const/4 v9, 0x0

    :cond_4
    :goto_3
    new-instance v12, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->setSubId(I)V

    invoke-virtual {v12}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "middle_real_value"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v12, v10, v4, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRealTimeValue(Landroid/net/NetworkTemplate;J)J

    move-result-wide v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {v12}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    new-instance v8, Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-direct {v8, v11}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    const-string/jumbo v19, "ITotalDataService"

    const-string/jumbo v20, "LIMIT_DISABLED:-1"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v19, "ITotalDataService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "isEnable:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v19, "ITotalDataService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "total:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v19, "ITotalDataService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "warningValue:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v19, "ITotalDataService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "restrictOn:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_c

    const-string/jumbo v19, "max"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_8

    :cond_5
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    invoke-virtual {v8, v10, v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    invoke-virtual {v8, v10, v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    :goto_4
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move/from16 v0, v16

    invoke-virtual {v8, v10, v0, v6}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    invoke-virtual {v8, v10}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v13

    const-string/jumbo v19, "ITotalDataService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "policy.limitBytes:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-wide v0, v13, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    return v19

    :catch_0
    move-exception v7

    const-string/jumbo v17, "max"

    goto/16 :goto_0

    :catch_1
    move-exception v7

    const-string/jumbo v18, "off"

    goto/16 :goto_1

    :cond_6
    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_8
    if-eqz v18, :cond_9

    const-string/jumbo v19, "off"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    :cond_9
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    invoke-virtual {v8, v10, v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    :goto_5
    if-eqz v14, :cond_b

    invoke-virtual {v12}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getlimiValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v8, v10, v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_4

    :cond_a
    invoke-virtual {v12}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getWarningByte()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v8, v10, v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_5

    :cond_b
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    invoke-virtual {v8, v10, v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_4

    :cond_c
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    invoke-virtual {v8, v10, v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    invoke-virtual {v8, v10, v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto/16 :goto_4
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "ITotalDataService"

    const-string/jumbo v1, "onBind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->setSubId(I)V

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mTelManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->stub:Lcom/samsung/android/trafficmanager/ITotalData$Stub;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string/jumbo v0, "ITotalDataService"

    const-string/jumbo v1, "onDestroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string/jumbo v0, "ITotalDataService"

    const-string/jumbo v1, "onUnbind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
