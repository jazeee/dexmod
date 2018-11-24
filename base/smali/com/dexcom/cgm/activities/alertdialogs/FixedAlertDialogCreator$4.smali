.class final Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4;
.super Ljava/lang/Object;
.source "FixedAlertDialogCreator.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayout(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 174
    sget v0, Lcom/dexcom/cgm/activities/R$id;->sqlReinstall:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 176
    sget v2, Lcom/dexcom/cgm/activities/R$string;->notification_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 178
    new-instance v3, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1;-><init>(Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/dexcom/cgm/activities/CustomViewUtil;->createHyperlink(Landroid/widget/TextView;Landroid/text/style/ClickableSpan;)V

    .line 193
    return-void
.end method
