.class synthetic Lcom/dexcom/cgm/activities/TrendGraphFragment$8;
.super Ljava/lang/Object;
.source "TrendGraphFragment.java"


# static fields
.field static final synthetic $SwitchMap$com$dexcom$cgm$presentation$model$enums$DexDisplayState:[I

.field static final synthetic $SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventSubType:[I

.field static final synthetic $SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 530
    invoke-static {}, Lcom/dexcom/cgm/i/a/a/b;->values()[Lcom/dexcom/cgm/i/a/a/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventSubType:[I

    :try_start_0
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventSubType:[I

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeAlcohol:Lcom/dexcom/cgm/i/a/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_13

    :goto_0
    :try_start_1
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventSubType:[I

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeCycle:Lcom/dexcom/cgm/i/a/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_12

    :goto_1
    :try_start_2
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventSubType:[I

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeIllness:Lcom/dexcom/cgm/i/a/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_11

    :goto_2
    :try_start_3
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventSubType:[I

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeLowSymptoms:Lcom/dexcom/cgm/i/a/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_10

    :goto_3
    :try_start_4
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventSubType:[I

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeHighSymptoms:Lcom/dexcom/cgm/i/a/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_f

    :goto_4
    :try_start_5
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventSubType:[I

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeStress:Lcom/dexcom/cgm/i/a/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_e

    :goto_5
    :try_start_6
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventSubType:[I

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->ExerciseSubTypeLight:Lcom/dexcom/cgm/i/a/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_d

    :goto_6
    :try_start_7
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventSubType:[I

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->ExerciseSubTypeMedium:Lcom/dexcom/cgm/i/a/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/b;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_c

    :goto_7
    :try_start_8
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventSubType:[I

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->ExerciseSubTypeHeavy:Lcom/dexcom/cgm/i/a/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/b;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_b

    .line 503
    :goto_8
    invoke-static {}, Lcom/dexcom/cgm/i/a/a/c;->values()[Lcom/dexcom/cgm/i/a/a/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventType:[I

    :try_start_9
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventType:[I

    sget-object v1, Lcom/dexcom/cgm/i/a/a/c;->Carbs:Lcom/dexcom/cgm/i/a/a/c;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_a

    :goto_9
    :try_start_a
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventType:[I

    sget-object v1, Lcom/dexcom/cgm/i/a/a/c;->Insulin:Lcom/dexcom/cgm/i/a/a/c;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_9

    :goto_a
    :try_start_b
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventType:[I

    sget-object v1, Lcom/dexcom/cgm/i/a/a/c;->Exercise:Lcom/dexcom/cgm/i/a/a/c;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_8

    :goto_b
    :try_start_c
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventType:[I

    sget-object v1, Lcom/dexcom/cgm/i/a/a/c;->Health:Lcom/dexcom/cgm/i/a/a/c;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/c;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_7

    :goto_c
    :try_start_d
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation_supplement$model$enums$DexUserEventType:[I

    sget-object v1, Lcom/dexcom/cgm/i/a/a/c;->Unknown:Lcom/dexcom/cgm/i/a/a/c;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/c;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_6

    .line 234
    :goto_d
    invoke-static {}, Lcom/dexcom/cgm/h/a/a/b;->values()[Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexDisplayState:[I

    :try_start_e
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexDisplayState:[I

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->TransmitterPairing:Lcom/dexcom/cgm/h/a/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_5

    :goto_e
    :try_start_f
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexDisplayState:[I

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->None:Lcom/dexcom/cgm/h/a/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_4

    :goto_f
    :try_start_10
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexDisplayState:[I

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->SensorRemoved:Lcom/dexcom/cgm/h/a/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_3

    :goto_10
    :try_start_11
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexDisplayState:[I

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->StartUpPeriod:Lcom/dexcom/cgm/h/a/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_2

    :goto_11
    :try_start_12
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexDisplayState:[I

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->DualBloodDrop:Lcom/dexcom/cgm/h/a/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_1

    :goto_12
    :try_start_13
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphFragment$8;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexDisplayState:[I

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->OneOfTwoDrops:Lcom/dexcom/cgm/h/a/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_0

    :goto_13
    return-void

    :catch_0
    move-exception v0

    goto :goto_13

    :catch_1
    move-exception v0

    goto :goto_12

    :catch_2
    move-exception v0

    goto :goto_11

    :catch_3
    move-exception v0

    goto :goto_10

    :catch_4
    move-exception v0

    goto :goto_f

    :catch_5
    move-exception v0

    goto :goto_e

    :catch_6
    move-exception v0

    goto :goto_d

    :catch_7
    move-exception v0

    goto :goto_c

    :catch_8
    move-exception v0

    goto :goto_b

    :catch_9
    move-exception v0

    goto :goto_a

    :catch_a
    move-exception v0

    goto/16 :goto_9

    :catch_b
    move-exception v0

    goto/16 :goto_8

    :catch_c
    move-exception v0

    goto/16 :goto_7

    :catch_d
    move-exception v0

    goto/16 :goto_6

    :catch_e
    move-exception v0

    goto/16 :goto_5

    :catch_f
    move-exception v0

    goto/16 :goto_4

    :catch_10
    move-exception v0

    goto/16 :goto_3

    :catch_11
    move-exception v0

    goto/16 :goto_2

    :catch_12
    move-exception v0

    goto/16 :goto_1

    :catch_13
    move-exception v0

    goto/16 :goto_0
.end method
