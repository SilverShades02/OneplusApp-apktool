.class Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintAuthenticateSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    .line 62
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 83
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->access$002(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    .line 84
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->access$100(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->access$100(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-direct {v2, v3, p1, p2}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;-><init>(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;ILjava/lang/CharSequence;)V

    invoke-static {v0, v2}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->access$302(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;)Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

    .line 88
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->access$202(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .line 90
    :goto_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->access$100(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->access$100(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;->onAuthenticationFailed()V

    .line 79
    :cond_0
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 94
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->access$100(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->access$100(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .line 65
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->access$002(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    .line 66
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->access$100(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->access$100(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->access$202(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .line 70
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->access$302(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;)Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

    .line 72
    :goto_0
    return-void
.end method