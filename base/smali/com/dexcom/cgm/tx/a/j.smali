.class public final Lcom/dexcom/cgm/tx/a/j;
.super Ljava/lang/Object;
.source "CgmControlPoint.java"


# static fields
.field private static BATTERY_STATUS_REQUEST_BYTES:[B = null

.field private static CAL_BOUNDS_REQUEST_BYTES:[B = null

.field private static final DATA_STREAM_FILTER_TYPE_IN_RANGE_INCLUSIVE:B = 0x2t

.field private static final DATA_STREAM_TYPE_EGV_BACKFILL:B = 0x5t

.field private static DISCONNECT_REQUEST_BYTES:[B = null

.field private static EGV_REQUEST_BYTES:[B = null

.field private static FIRMWARE_VERSION_REQUEST_BYTES:[B = null

.field public static final OPCODE_ADVERTISING_CONFIGURATION_REQUEST:B = 0x6t

.field public static final OPCODE_ADVERTISING_CONFIGURATION_RESPONSE:B = 0x1ct

.field public static final OPCODE_APP_LEVEL_KEY_ACCEPTED:B = 0x10t

.field public static final OPCODE_BATTERY_STATUS_REQUEST:B = 0x22t

.field public static final OPCODE_BATTERY_STATUS_RESPONSE:B = 0x23t

.field public static final OPCODE_CALIBRATION_REQUEST:B = 0x34t

.field public static final OPCODE_CALIBRATION_RESPONSE:B = 0x35t

.field public static final OPCODE_CAL_BOUNDS_REQUEST:B = 0x32t

.field public static final OPCODE_CAL_BOUNDS_RESPONSE:B = 0x33t

.field public static final OPCODE_CHANGE_TO_NEW_APP_LEVEL_KEY:B = 0xft

.field public static final OPCODE_DATA_STREAM_REQUEST:B = 0x50t

.field public static final OPCODE_DATA_STREAM_RESPONSE:B = 0x51t

.field public static final OPCODE_DISCONNECT_REQUEST:B = 0x9t

.field public static final OPCODE_EGV_REQUEST:B = 0x30t

.field public static final OPCODE_EGV_RESPONSE:B = 0x31t

.field public static final OPCODE_FIRMWARE_VERSION_REQUEST:B = 0x20t

.field public static final OPCODE_FIRMWARE_VERSION_RESPONSE:B = 0x21t

.field public static final OPCODE_START_SENSOR_SESSION_REQUEST:B = 0x26t

.field public static final OPCODE_START_SENSOR_SESSION_RESPONSE:B = 0x27t

.field public static final OPCODE_STOP_SENSOR_SESSION_REQUEST:B = 0x28t

.field public static final OPCODE_STOP_SENSOR_SESSION_RESPONSE:B = 0x29t

.field public static final OPCODE_TRANSMITTER_VERSION_EXTENDED_REQUEST:B = 0x52t

.field public static final OPCODE_TRANSMITTER_VERSION_EXTENDED_RESPONSE:B = 0x53t

.field public static final OPCODE_TRANSMITTER_VERSION_REQUEST:B = 0x4at

.field public static final OPCODE_TRANSMITTER_VERSION_RESPONSE:B = 0x4bt

.field public static final OPCODE_TX_TIME_AND_SESSION_SIGNATURE_REQUEST:B = 0x24t

.field public static final OPCODE_TX_TIME_AND_SESSION_SIGNATURE_RESPONSE:B = 0x25t

.field public static final TRANSMITTER_STATUS_BATTERY_LOW:B = -0x7ft

.field public static final TRANSMITTER_STATUS_SUCCESS:B = 0x0t

.field public static final TRANSMITTER_STATUS_UNRECOVERABLE_ERROR:B = -0x7dt

.field private static TRANSMITTER_VERSION_EXTENDED_REQUEST_BYTES:[B

.field private static TRANSMITTER_VERSION_REQUEST_BYTES:[B

.field private static TX_TIME_AND_SESSION_SIGNATURE_REQUEST_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/tx/a/j;->DISCONNECT_REQUEST_BYTES:[B

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static allocateBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 237
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static calculateAndInsertCrc(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {p0, v0}, Lcom/dexcom/cgm/tx/a/g;->calculate(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 248
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 249
    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 250
    return-void
.end method

.method public static createAdvertisingConfigRequest(II)[B
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 194
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 195
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 196
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 197
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static createBackfillStreamRequest(JJ)[B
    .locals 2

    .prologue
    .line 223
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 224
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 225
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 226
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 227
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 228
    long-to-int v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 229
    long-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 230
    const/4 v1, 0x6

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 231
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->calculateAndInsertCrc(Ljava/nio/ByteBuffer;)V

    .line 232
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static createCalBoundsRequest()[B
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/dexcom/cgm/tx/a/j;->CAL_BOUNDS_REQUEST_BYTES:[B

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 126
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 127
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->calculateAndInsertCrc(Ljava/nio/ByteBuffer;)V

    .line 128
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/a/j;->CAL_BOUNDS_REQUEST_BYTES:[B

    .line 130
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/tx/a/j;->CAL_BOUNDS_REQUEST_BYTES:[B

    return-object v0
.end method

.method public static createCalibrationRequest(JI)[B
    .locals 2

    .prologue
    .line 157
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 158
    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 159
    int-to-short v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 160
    long-to-int v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 161
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->calculateAndInsertCrc(Ljava/nio/ByteBuffer;)V

    .line 163
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static createChangeToNewAppLevelKeyRequest(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 203
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 204
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 205
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 206
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static createDisconnectRequest()[B
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/dexcom/cgm/tx/a/j;->DISCONNECT_REQUEST_BYTES:[B

    return-object v0
.end method

.method public static createEgvRequest()[B
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/dexcom/cgm/tx/a/j;->EGV_REQUEST_BYTES:[B

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 114
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 115
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->calculateAndInsertCrc(Ljava/nio/ByteBuffer;)V

    .line 116
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/a/j;->EGV_REQUEST_BYTES:[B

    .line 118
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/tx/a/j;->EGV_REQUEST_BYTES:[B

    return-object v0
.end method

.method public static createFirmwareVersionRequest()[B
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/dexcom/cgm/tx/a/j;->FIRMWARE_VERSION_REQUEST_BYTES:[B

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 91
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->calculateAndInsertCrc(Ljava/nio/ByteBuffer;)V

    .line 92
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/a/j;->FIRMWARE_VERSION_REQUEST_BYTES:[B

    .line 94
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/tx/a/j;->FIRMWARE_VERSION_REQUEST_BYTES:[B

    return-object v0
.end method

.method public static createStartSensorSessionRequest(JJ)[B
    .locals 2

    .prologue
    .line 136
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 137
    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 138
    long-to-int v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 139
    long-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 140
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->calculateAndInsertCrc(Ljava/nio/ByteBuffer;)V

    .line 142
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static createStopSensorSessionRequest(J)[B
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 148
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 149
    long-to-int v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 150
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->calculateAndInsertCrc(Ljava/nio/ByteBuffer;)V

    .line 152
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static createTransmitterVersionExtendedRequest()[B
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/dexcom/cgm/tx/a/j;->TRANSMITTER_VERSION_EXTENDED_REQUEST_BYTES:[B

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 184
    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 185
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->calculateAndInsertCrc(Ljava/nio/ByteBuffer;)V

    .line 186
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/a/j;->TRANSMITTER_VERSION_EXTENDED_REQUEST_BYTES:[B

    .line 188
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/tx/a/j;->TRANSMITTER_VERSION_EXTENDED_REQUEST_BYTES:[B

    return-object v0
.end method

.method public static createTransmitterVersionRequest()[B
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/dexcom/cgm/tx/a/j;->TRANSMITTER_VERSION_REQUEST_BYTES:[B

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 171
    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 172
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->calculateAndInsertCrc(Ljava/nio/ByteBuffer;)V

    .line 173
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/a/j;->TRANSMITTER_VERSION_REQUEST_BYTES:[B

    .line 175
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/tx/a/j;->TRANSMITTER_VERSION_REQUEST_BYTES:[B

    return-object v0
.end method

.method public static createTxBatteryStatusRequest()[B
    .locals 2

    .prologue
    .line 211
    sget-object v0, Lcom/dexcom/cgm/tx/a/j;->BATTERY_STATUS_REQUEST_BYTES:[B

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 214
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 215
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->calculateAndInsertCrc(Ljava/nio/ByteBuffer;)V

    .line 216
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/a/j;->BATTERY_STATUS_REQUEST_BYTES:[B

    .line 218
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/tx/a/j;->BATTERY_STATUS_REQUEST_BYTES:[B

    return-object v0
.end method

.method public static createTxTimeAndSessionSignatureRequest()[B
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/dexcom/cgm/tx/a/j;->TX_TIME_AND_SESSION_SIGNATURE_REQUEST_BYTES:[B

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 102
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 103
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->calculateAndInsertCrc(Ljava/nio/ByteBuffer;)V

    .line 104
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/a/j;->TX_TIME_AND_SESSION_SIGNATURE_REQUEST_BYTES:[B

    .line 106
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/tx/a/j;->TX_TIME_AND_SESSION_SIGNATURE_REQUEST_BYTES:[B

    return-object v0
.end method

.method public static getResponseCode([B)B
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    return v0
.end method

.method public static isTransmitterLowBattery(B)Z
    .locals 1

    .prologue
    .line 77
    const/16 v0, -0x7f

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnrecoverableError(B)Z
    .locals 1

    .prologue
    .line 72
    if-eqz p0, :cond_0

    const/16 v0, -0x7f

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
