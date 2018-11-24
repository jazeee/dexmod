.class Landroid/support/v7/widget/ActivityChooserView$4;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActivityChooserView;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$4;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 268
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$4;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->access$400(Landroid/support/v7/widget/ActivityChooserView;)V

    .line 269
    return-void
.end method
