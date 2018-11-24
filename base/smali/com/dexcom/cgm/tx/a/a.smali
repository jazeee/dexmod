.class public Lcom/dexcom/cgm/tx/a/a;
.super Ljava/lang/Object;
.source "AdvertisingConfigurationResponse.java"


# static fields
.field public static final EXPECTED_ADVERTISING_RESPONSE:B = 0x7t

.field public static final EXPECTED_RESPONSE_CODE:B = 0x1ct


# instance fields
.field private final m_advertisingResponse:B

.field private final m_commandStatus:B

.field private final m_rawBytes:[B

.field private final m_responseCode:B


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mismatched size: expected =3 actual = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/a;->m_responseCode:B

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/a;->m_advertisingResponse:B

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/a;->m_commandStatus:B

    .line 34
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->checkNoRemainingBuffer(Ljava/nio/ByteBuffer;)V

    .line 35
    iput-object p1, p0, Lcom/dexcom/cgm/tx/a/a;->m_rawBytes:[B

    .line 36
    return-void
.end method

.method private static advertiseDeltaUnitsToMilliseconds(I)I
    .locals 4

    .prologue
    .line 1100
    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static checkNoRemainingBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 3048
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3050
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incomplete parsing: remaining = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3051
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3053
    :cond_0
    return-void
.end method

.method public static createAndValidateBuffer([BI)Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    .line 3020
    array-length v0, p0

    if-eq v0, p1, :cond_0

    .line 3022
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mismatched size: expected ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " actual = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3025
    :cond_0
    invoke-static {p0}, Lcom/dexcom/cgm/tx/a/a;->wrapBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3026
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/a/g;->calculate(Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 3028
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3029
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 3031
    if-eq v1, v0, :cond_1

    .line 3033
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mismatched crc: calculated = 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3034
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " message = 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3036
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3038
    :cond_1
    invoke-static {p0}, Lcom/dexcom/cgm/tx/a/a;->wrapBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getUInt16(Ljava/nio/ByteBuffer;)I
    .locals 4

    .prologue
    .line 2027
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2028
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 2029
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2030
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2031
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public static getUInt32(Ljava/nio/ByteBuffer;)J
    .locals 4

    .prologue
    .line 2018
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2019
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 2020
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2021
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2022
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUInt8(Ljava/nio/ByteBuffer;)S
    .locals 4

    .prologue
    .line 2036
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2037
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 2038
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2039
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2040
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public static parse([B)Lcom/dexcom/cgm/tx/a/b;
    .locals 6

    .prologue
    .line 1076
    if-nez p0, :cond_0

    .line 1078
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null advertising sync payload"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1081
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1082
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 1083
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 1084
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    long-to-int v3, v4

    .line 1085
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 1086
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 1088
    new-instance v0, Lcom/dexcom/cgm/tx/a/b;

    .line 1089
    invoke-static {v1}, Lcom/dexcom/cgm/tx/a/a;->advertiseDeltaUnitsToMilliseconds(I)I

    move-result v1

    .line 1090
    invoke-static {v2}, Lcom/dexcom/cgm/tx/a/a;->advertiseDeltaUnitsToMilliseconds(I)I

    move-result v2

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/tx/a/b;-><init>(IIIII)V

    return-object v0
.end method

.method private static wrapBuffer([B)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 3043
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getAdvertisingResponse()B
    .locals 1

    .prologue
    .line 45
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/a;->m_advertisingResponse:B

    return v0
.end method

.method public final getResponseCode()B
    .locals 1

    .prologue
    .line 40
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/a;->m_responseCode:B

    return v0
.end method

.method public final isCommandStatusSuccess()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 51
    iget-byte v1, p0, Lcom/dexcom/cgm/tx/a/a;->m_commandStatus:B

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
