.class Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectPhoneAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/telecom/PhoneAccountHandle;",
        ">;"
    }
.end annotation


# instance fields
.field private mResId:I

.field final synthetic this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput p3, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->mResId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    iget v5, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->mResId:I

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    new-instance v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;

    invoke-direct {v2, p0, v7}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;)V

    const v5, 0x7f10011e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->labelTextView:Landroid/widget/TextView;

    const v5, 0x7f1000fa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    const v5, 0x7f10003f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    iget-object v5, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    # getter for: Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;
    invoke-static {v5}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->access$500(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Landroid/telecom/TelecomManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-object v4

    :cond_0
    move-object v4, p2

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    iget-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->labelTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/contacts/common/compat/PhoneAccountCompat;->createIconDrawable(Landroid/telecom/PhoneAccount;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
