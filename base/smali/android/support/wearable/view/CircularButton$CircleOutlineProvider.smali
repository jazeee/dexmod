.class Landroid/support/wearable/view/CircularButton$CircleOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "CircularButton.java"


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/CircularButton;


# direct methods
.method private constructor <init>(Landroid/support/wearable/view/CircularButton;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Landroid/support/wearable/view/CircularButton$CircleOutlineProvider;->this$0:Landroid/support/wearable/view/CircularButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/wearable/view/CircularButton;Landroid/support/wearable/view/CircularButton$1;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0, p1}, Landroid/support/wearable/view/CircularButton$CircleOutlineProvider;-><init>(Landroid/support/wearable/view/CircularButton;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton$CircleOutlineProvider;->this$0:Landroid/support/wearable/view/CircularButton;

    invoke-static {v0}, Landroid/support/wearable/view/CircularButton;->access$100(Landroid/support/wearable/view/CircularButton;)I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/CircularButton$CircleOutlineProvider;->this$0:Landroid/support/wearable/view/CircularButton;

    invoke-static {v1}, Landroid/support/wearable/view/CircularButton;->access$100(Landroid/support/wearable/view/CircularButton;)I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 359
    return-void
.end method
