.class Lcom/dexcom/cgm/activities/ToastHelper$1;
.super Ljava/lang/Object;
.source "ToastHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/ToastHelper;

.field final synthetic val$drawableID:I

.field final synthetic val$durationInMillis:J

.field final synthetic val$messageID:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/ToastHelper;ILjava/lang/Integer;J)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ToastHelper$1;->this$0:Lcom/dexcom/cgm/activities/ToastHelper;

    iput p2, p0, Lcom/dexcom/cgm/activities/ToastHelper$1;->val$drawableID:I

    iput-object p3, p0, Lcom/dexcom/cgm/activities/ToastHelper$1;->val$messageID:Ljava/lang/Integer;

    iput-wide p4, p0, Lcom/dexcom/cgm/activities/ToastHelper$1;->val$durationInMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private inflateToastView()Landroid/view/ViewGroup;
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ToastHelper$1;->this$0:Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/ToastHelper;->access$000(Lcom/dexcom/cgm/activities/ToastHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 71
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->toast_base:I

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/ToastHelper$1;->this$0:Lcom/dexcom/cgm/activities/ToastHelper;

    .line 72
    invoke-static {v3}, Lcom/dexcom/cgm/activities/ToastHelper;->access$000(Lcom/dexcom/cgm/activities/ToastHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private setupImageView(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 77
    sget v0, Lcom/dexcom/cgm/activities/R$id;->toast_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 78
    iget-object v1, p0, Lcom/dexcom/cgm/activities/ToastHelper$1;->this$0:Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/ToastHelper;->access$000(Lcom/dexcom/cgm/activities/ToastHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    return-void
.end method

.method private setupTextView(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 3
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    sget v0, Lcom/dexcom/cgm/activities/R$id;->toast_message_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    if-nez p2, :cond_0

    .line 86
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/dexcom/cgm/activities/ToastHelper$1;->this$0:Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/ToastHelper;->access$000(Lcom/dexcom/cgm/activities/ToastHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/ToastHelper$1;->inflateToastView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 57
    iget v1, p0, Lcom/dexcom/cgm/activities/ToastHelper$1;->val$drawableID:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper$1;->setupImageView(Landroid/view/View;I)V

    .line 58
    iget-object v1, p0, Lcom/dexcom/cgm/activities/ToastHelper$1;->val$messageID:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper$1;->setupTextView(Landroid/view/View;Ljava/lang/Integer;)V

    .line 60
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/ToastHelper$1;->this$0:Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/ToastHelper;->access$000(Lcom/dexcom/cgm/activities/ToastHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 61
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ToastHelper$1;->this$0:Lcom/dexcom/cgm/activities/ToastHelper;

    iget-wide v2, p0, Lcom/dexcom/cgm/activities/ToastHelper$1;->val$durationInMillis:J

    invoke-static {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/ToastHelper;->access$100(Lcom/dexcom/cgm/activities/ToastHelper;Landroid/widget/Toast;J)V

    .line 66
    return-void
.end method
