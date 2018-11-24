.class public final Lcom/dexcom/cgm/tx/a/i;
.super Ljava/lang/Object;
.source "CalibrateResponse.java"


# static fields
.field public static final BgIsDuplicate:B = 0xdt

.field public static final BgNotInChronologicalOrder:B = 0x10t

.field public static final BgOutsideOf20to600:B = 0xat

.field public static final BgOutsideOf40to400Fail:B = 0x5t

.field public static final BgOutsideOf40to400Pass:B = 0x7t

.field public static final BgTimestampEarlierThanSessionStartCommandReceived:B = 0xft

.field public static final BgTimestampInTheFuture:B = 0xct

.field public static final BgTimestampTooEarly:B = 0xet

.field public static final BgUnmatched:B = 0x9t

.field public static final CalibrationAlreadyDoneWithOtherDevice:B = 0x11t

.field public static final CalibrationError0:B = 0x1t

.field public static final CalibrationError1:B = 0x2t

.field public static final CalibrationLinearityFitFailure:B = 0x3t

.field public static final CalibrationSuccess:B = 0x0t

.field public static final NotInSession:B = 0xbt

.field public static final OutlierCalibrationFailure:B = 0x4t

.field public static final OutlierCalibrationRequest:B = 0x8t

.field public static final SecondStartupBgRequired:B = 0x6t


# instance fields
.field private final m_applicationStatusCode:B

.field private final m_crc:I

.field private final m_rawBytes:[B

.field private final m_responseCode:B

.field private final m_transmitterStatusCode:B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/dexcom/cgm/tx/a/a;->createAndValidateBuffer([BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/i;->m_responseCode:B

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/i;->m_transmitterStatusCode:B

    .line 45
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/i;->m_applicationStatusCode:B

    .line 46
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/i;->m_crc:I

    .line 47
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->checkNoRemainingBuffer(Ljava/nio/ByteBuffer;)V

    .line 48
    iput-object p1, p0, Lcom/dexcom/cgm/tx/a/i;->m_rawBytes:[B

    .line 49
    return-void
.end method


# virtual methods
.method public final getApplicationStatusCode()B
    .locals 1

    .prologue
    .line 63
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/i;->m_applicationStatusCode:B

    return v0
.end method

.method public final getCrc()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/dexcom/cgm/tx/a/i;->m_crc:I

    return v0
.end method

.method public final getRawBytes()[B
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/i;->m_rawBytes:[B

    return-object v0
.end method

.method public final getResponseCode()B
    .locals 1

    .prologue
    .line 53
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/i;->m_responseCode:B

    return v0
.end method

.method public final getTransmitterStatusCode()B
    .locals 1

    .prologue
    .line 58
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/i;->m_transmitterStatusCode:B

    return v0
.end method
