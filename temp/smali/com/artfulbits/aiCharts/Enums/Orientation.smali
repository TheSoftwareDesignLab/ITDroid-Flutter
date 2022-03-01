.class public final enum Lcom/artfulbits/aiCharts/Enums/Orientation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/artfulbits/aiCharts/Enums/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Horizontal:Lcom/artfulbits/aiCharts/Enums/Orientation;

.field public static final enum Vertical:Lcom/artfulbits/aiCharts/Enums/Orientation;

.field private static final synthetic a:[Lcom/artfulbits/aiCharts/Enums/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/artfulbits/aiCharts/Enums/Orientation;

    const-string v1, "Horizontal"

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Enums/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Enums/Orientation;->Horizontal:Lcom/artfulbits/aiCharts/Enums/Orientation;

    new-instance v0, Lcom/artfulbits/aiCharts/Enums/Orientation;

    const-string v1, "Vertical"

    invoke-direct {v0, v1, v3}, Lcom/artfulbits/aiCharts/Enums/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Enums/Orientation;->Vertical:Lcom/artfulbits/aiCharts/Enums/Orientation;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Enums/Orientation;

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Orientation;->Horizontal:Lcom/artfulbits/aiCharts/Enums/Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Orientation;->Vertical:Lcom/artfulbits/aiCharts/Enums/Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/artfulbits/aiCharts/Enums/Orientation;->a:[Lcom/artfulbits/aiCharts/Enums/Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Enums/Orientation;
    .locals 1

    const-class v0, Lcom/artfulbits/aiCharts/Enums/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Enums/Orientation;

    return-object v0
.end method

.method public static values()[Lcom/artfulbits/aiCharts/Enums/Orientation;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Orientation;->a:[Lcom/artfulbits/aiCharts/Enums/Orientation;

    invoke-virtual {v0}, [Lcom/artfulbits/aiCharts/Enums/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Enums/Orientation;

    return-object v0
.end method
