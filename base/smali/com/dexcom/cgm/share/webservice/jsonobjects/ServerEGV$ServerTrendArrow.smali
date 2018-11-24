.class final enum Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;
.super Ljava/lang/Enum;
.source "ServerEGV.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

.field public static final enum DoubleDown:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

.field public static final enum DoubleUp:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

.field public static final enum Flat:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

.field public static final enum FortyFiveDown:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

.field public static final enum FortyFiveUp:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

.field public static final enum None:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

.field public static final enum SingleDown:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

.field public static final enum SingleUp:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;


# instance fields
.field private m_localTrendArrowValue:Lcom/dexcom/cgm/model/enums/TrendArrow;

.field private m_serverEnumValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    const-string v1, "None"

    sget-object v2, Lcom/dexcom/cgm/model/enums/TrendArrow;->None:Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;-><init>(Ljava/lang/String;IILcom/dexcom/cgm/model/enums/TrendArrow;)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->None:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    .line 59
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    const-string v1, "DoubleUp"

    sget-object v2, Lcom/dexcom/cgm/model/enums/TrendArrow;->DoubleUp:Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;-><init>(Ljava/lang/String;IILcom/dexcom/cgm/model/enums/TrendArrow;)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->DoubleUp:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    .line 60
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    const-string v1, "SingleUp"

    sget-object v2, Lcom/dexcom/cgm/model/enums/TrendArrow;->SingleUp:Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;-><init>(Ljava/lang/String;IILcom/dexcom/cgm/model/enums/TrendArrow;)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->SingleUp:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    .line 61
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    const-string v1, "FortyFiveUp"

    sget-object v2, Lcom/dexcom/cgm/model/enums/TrendArrow;->FortyFiveUp:Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;-><init>(Ljava/lang/String;IILcom/dexcom/cgm/model/enums/TrendArrow;)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->FortyFiveUp:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    .line 62
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    const-string v1, "Flat"

    sget-object v2, Lcom/dexcom/cgm/model/enums/TrendArrow;->Flat:Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;-><init>(Ljava/lang/String;IILcom/dexcom/cgm/model/enums/TrendArrow;)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->Flat:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    .line 63
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    const-string v1, "FortyFiveDown"

    const/4 v2, 0x5

    const/4 v3, 0x5

    sget-object v4, Lcom/dexcom/cgm/model/enums/TrendArrow;->FortyFiveDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;-><init>(Ljava/lang/String;IILcom/dexcom/cgm/model/enums/TrendArrow;)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->FortyFiveDown:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    .line 64
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    const-string v1, "SingleDown"

    const/4 v2, 0x6

    const/4 v3, 0x6

    sget-object v4, Lcom/dexcom/cgm/model/enums/TrendArrow;->SingleDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;-><init>(Ljava/lang/String;IILcom/dexcom/cgm/model/enums/TrendArrow;)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->SingleDown:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    .line 65
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    const-string v1, "DoubleDown"

    const/4 v2, 0x7

    const/4 v3, 0x7

    sget-object v4, Lcom/dexcom/cgm/model/enums/TrendArrow;->DoubleDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;-><init>(Ljava/lang/String;IILcom/dexcom/cgm/model/enums/TrendArrow;)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->DoubleDown:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->None:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->DoubleUp:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->SingleUp:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->FortyFiveUp:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    aput-object v1, v0, v8

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->Flat:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->FortyFiveDown:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->SingleDown:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->DoubleDown:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->$VALUES:[Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/dexcom/cgm/model/enums/TrendArrow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/dexcom/cgm/model/enums/TrendArrow;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->m_serverEnumValue:I

    .line 73
    iput-object p4, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->m_localTrendArrowValue:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 74
    return-void
.end method

.method public static fromLocalTrendArrow(Lcom/dexcom/cgm/model/enums/TrendArrow;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;
    .locals 5

    .prologue
    .line 78
    invoke-static {}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->values()[Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 80
    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->getLocalTrendArrowValue()Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v4

    if-ne v4, p0, :cond_0

    .line 86
    :goto_1
    return-object v0

    .line 78
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 86
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->None:Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->$VALUES:[Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    return-object v0
.end method


# virtual methods
.method public final getLocalTrendArrowValue()Lcom/dexcom/cgm/model/enums/TrendArrow;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->m_localTrendArrowValue:Lcom/dexcom/cgm/model/enums/TrendArrow;

    return-object v0
.end method

.method public final getServerEnumValue()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->m_serverEnumValue:I

    return v0
.end method
