.class final Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$2;
.super Ljava/lang/Object;
.source "MenuAppModel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer",
        "<",
        "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->-get0()Ljava/text/Collator;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_6

    iget-object v1, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->-get0()Ljava/text/Collator;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-wide v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    iget-wide v4, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->-wrap1(JJ)I

    move-result v0

    :cond_2
    return v0

    :cond_3
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_5

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v1, :cond_7

    const/4 v0, -0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    check-cast p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$2;->compare(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)I

    move-result v0

    return v0
.end method

.method public normalize(Ljava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;IZ)V"
        }
    .end annotation

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "MenuAppModel.MENU_ALPHA_NORMALIZER"

    return-object v0
.end method
