.class public Lcom/android/launcher3/home/AddItemOnLastPageDialog;
.super Landroid/app/DialogFragment;
.source "AddItemOnLastPageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static mIsTargetHotseat:Z = false

.field private static mNegativeRunnable:Ljava/lang/Runnable; = null

.field private static mPositiveRunnable:Ljava/lang/Runnable; = null

.field private static mRemainCnt:I = 0x0

.field private static mTotalCnt:I = 0x0

.field private static final sFragmentTag:Ljava/lang/String; = "AddItemOnLastPageDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;Ljava/lang/Runnable;Ljava/lang/Runnable;IIZ)V
    .locals 2

    sput-object p1, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mPositiveRunnable:Ljava/lang/Runnable;

    sput-object p2, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mNegativeRunnable:Ljava/lang/Runnable;

    sput p3, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mRemainCnt:I

    sput p4, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mTotalCnt:I

    sput-boolean p5, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mIsTargetHotseat:Z

    new-instance v0, Lcom/android/launcher3/home/AddItemOnLastPageDialog;

    invoke-direct {v0}, Lcom/android/launcher3/home/AddItemOnLastPageDialog;-><init>()V

    const-string v1, "AddItemOnLastPageDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static dismiss(Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "AddItemOnLastPageDialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "AddItemOnLastPageDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mPositiveRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sput-object v1, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mPositiveRunnable:Ljava/lang/Runnable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mNegativeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sput-object v1, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mNegativeRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    sget-boolean v2, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mIsTargetHotseat:Z

    if-eqz v2, :cond_0

    const v1, 0x7f090014

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mTotalCnt:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mRemainCnt:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090012

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090031

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    const v1, 0x7f090013

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mPositiveRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mNegativeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mNegativeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
