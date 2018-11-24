.class final Lcom/flurry/sdk/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cb;I)V
    .locals 0

    .prologue
    .line 144
    iput p2, p0, Lcom/flurry/sdk/cc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SD HTTP Response Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/flurry/sdk/cc;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    return-void
.end method
