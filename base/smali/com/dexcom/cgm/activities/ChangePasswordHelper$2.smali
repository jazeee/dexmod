.class final Lcom/dexcom/cgm/activities/ChangePasswordHelper$2;
.super Ljava/lang/Object;
.source "ChangePasswordHelper.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ChangePasswordHelper$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayout(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 41
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tech_support_phone_number_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/ChangePasswordHelper$2$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/ChangePasswordHelper$2$1;-><init>(Lcom/dexcom/cgm/activities/ChangePasswordHelper$2;)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method
