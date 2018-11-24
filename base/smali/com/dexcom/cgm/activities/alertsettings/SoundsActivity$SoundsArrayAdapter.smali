.class final Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SoundsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

.field private final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 251
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    .line 252
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->row_layout:I

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 253
    iput-object p2, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;->context:Landroid/content/Context;

    .line 254
    iput-object p3, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;->values:[Ljava/lang/String;

    .line 255
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 260
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 262
    if-nez p2, :cond_0

    .line 263
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->row_layout:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 264
    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$id;->start_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 265
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;->values:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    sget v0, Lcom/dexcom/cgm/activities/R$id;->end_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 268
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    sget v0, Lcom/dexcom/cgm/activities/R$id;->row_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 272
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    sget v1, Lcom/dexcom/cgm/activities/R$id;->row_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 275
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 279
    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_radio_button_checked:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    :goto_0
    return-object p2

    .line 284
    :cond_1
    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_radio_button_unchecked:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
