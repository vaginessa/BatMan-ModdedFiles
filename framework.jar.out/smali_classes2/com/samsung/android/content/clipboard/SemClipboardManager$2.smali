.class Lcom/samsung/android/content/clipboard/SemClipboardManager$2;
.super Lcom/samsung/android/content/clipboard/IOnUserChangedListener$Stub;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/clipboard/SemClipboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/IOnUserChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserChanged(I)V
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get1(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
