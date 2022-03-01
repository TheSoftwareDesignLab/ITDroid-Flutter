.class public Lcom/evancharlton/mileage/views/DistanceDelta;
.super Lcom/evancharlton/mileage/views/DeltaView;
.source "DistanceDelta.java"


# static fields
.field private static final ONE_METER:J = 0x64L

.field private static final TEXTS:[Ljava/lang/String;

.field private static final VALUES:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/evancharlton/mileage/views/DistanceDelta;->VALUES:[J

    .line 18
    sget-object v0, Lcom/evancharlton/mileage/views/DistanceDelta;->VALUES:[J

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/evancharlton/mileage/views/DistanceDelta;->TEXTS:[Ljava/lang/String;

    return-void

    .line 13
    :array_0
    .array-data 8
        0x27484
        0x186a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/evancharlton/mileage/views/DeltaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    sget-object v0, Lcom/evancharlton/mileage/views/DistanceDelta;->TEXTS:[Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0700cb

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 23
    sget-object v0, Lcom/evancharlton/mileage/views/DistanceDelta;->TEXTS:[Ljava/lang/String;

    const/4 v1, 0x1

    const v2, 0x7f0700cd

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 24
    return-void
.end method


# virtual methods
.method protected getPosition(J)I
    .locals 3
    .param p1, "delta"    # J

    .prologue
    .line 28
    const-wide/16 v1, 0x64

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 29
    .local v0, "unit":I
    packed-switch v0, :pswitch_data_0

    .line 33
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 31
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method protected getTexts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/evancharlton/mileage/views/DistanceDelta;->TEXTS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getValues()[J
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/evancharlton/mileage/views/DistanceDelta;->VALUES:[J

    return-object v0
.end method
