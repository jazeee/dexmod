.class final Lcom/dexcom/cgm/component_provider/l;
.super Landroid/content/BroadcastReceiver;
.source "CgmService.java"


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/component_provider/CgmService;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_1
    return-void

    .line 167
    :sswitch_0
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 169
    :pswitch_0
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Interaction:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v1, Lcom/dexcom/cgm/model/enums/InteractionType;->ScreenOn:Lcom/dexcom/cgm/model/enums/InteractionType;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logInteraction(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/model/enums/InteractionType;)V

    .line 171
    const-string v0, "Interaction"

    const-string v1, "Screen On"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 174
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Interaction:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v1, Lcom/dexcom/cgm/model/enums/InteractionType;->ScreenOff:Lcom/dexcom/cgm/model/enums/InteractionType;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logInteraction(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/model/enums/InteractionType;)V

    .line 176
    const-string v0, "Interaction"

    const-string v1, "Screen Off"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 179
    :pswitch_2
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Interaction:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v1, Lcom/dexcom/cgm/model/enums/InteractionType;->UserPresent:Lcom/dexcom/cgm/model/enums/InteractionType;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logInteraction(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/model/enums/InteractionType;)V

    .line 181
    const-string v0, "Interaction"

    const-string v1, "User Present"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_1
        -0x56ac2893 -> :sswitch_0
        0x311a1d6c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
