.class Lcom/android/incallui/ConferenceParticipantListAdapter$6;
.super Ljava/lang/Object;
.source "ConferenceParticipantListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ConferenceParticipantListAdapter;->setCallTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;


# direct methods
.method constructor <init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$6;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$6;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    # invokes: Lcom/android/incallui/ConferenceParticipantListAdapter;->updateCallTime()V
    invoke-static {v0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->access$700(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    return-void
.end method
