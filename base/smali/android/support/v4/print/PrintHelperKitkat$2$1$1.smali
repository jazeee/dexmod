.class Landroid/support/v4/print/PrintHelperKitkat$2$1$1;
.super Ljava/lang/Object;
.source "PrintHelperKitkat.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field final synthetic this$2:Landroid/support/v4/print/PrintHelperKitkat$2$1;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat$2$1;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1$1;->this$2:Landroid/support/v4/print/PrintHelperKitkat$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1$1;->this$2:Landroid/support/v4/print/PrintHelperKitkat$2$1;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat$2$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$2;

    invoke-static {v0}, Landroid/support/v4/print/PrintHelperKitkat$2;->access$100(Landroid/support/v4/print/PrintHelperKitkat$2;)V

    .line 457
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2$1$1;->this$2:Landroid/support/v4/print/PrintHelperKitkat$2$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelperKitkat$2$1;->cancel(Z)Z

    .line 458
    return-void
.end method
