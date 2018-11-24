.class Landroid/support/design/widget/TabLayout$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$1;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 663
    check-cast p1, Landroid/support/design/widget/TabLayout$TabView;

    .line 664
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$TabView;->getTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 665
    return-void
.end method
