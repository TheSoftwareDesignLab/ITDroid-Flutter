.class public final enum Lcom/artfulbits/aiCharts/Enums/Shape3D;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/artfulbits/aiCharts/Enums/Shape3D;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Box:Lcom/artfulbits/aiCharts/Enums/Shape3D;

.field public static final enum Cone:Lcom/artfulbits/aiCharts/Enums/Shape3D;

.field public static final enum Cylinder:Lcom/artfulbits/aiCharts/Enums/Shape3D;

.field public static final enum Pyramid:Lcom/artfulbits/aiCharts/Enums/Shape3D;

.field private static final synthetic a:[Lcom/artfulbits/aiCharts/Enums/Shape3D;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/artfulbits/aiCharts/Enums/Shape3D;

    const-string v1, "Box"

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Enums/Shape3D;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Enums/Shape3D;->Box:Lcom/artfulbits/aiCharts/Enums/Shape3D;

    new-instance v0, Lcom/artfulbits/aiCharts/Enums/Shape3D;

    const-string v1, "Cylinder"

    invoke-direct {v0, v1, v3}, Lcom/artfulbits/aiCharts/Enums/Shape3D;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Enums/Shape3D;->Cylinder:Lcom/artfulbits/aiCharts/Enums/Shape3D;

    new-instance v0, Lcom/artfulbits/aiCharts/Enums/Shape3D;

    const-string v1, "Pyramid"

    invoke-direct {v0, v1, v4}, Lcom/artfulbits/aiCharts/Enums/Shape3D;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Enums/Shape3D;->Pyramid:Lcom/artfulbits/aiCharts/Enums/Shape3D;

    new-instance v0, Lcom/artfulbits/aiCharts/Enums/Shape3D;

    const-string v1, "Cone"

    invoke-direct {v0, v1, v5}, Lcom/artfulbits/aiCharts/Enums/Shape3D;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Enums/Shape3D;->Cone:Lcom/artfulbits/aiCharts/Enums/Shape3D;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Enums/Shape3D;

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Shape3D;->Box:Lcom/artfulbits/aiCharts/Enums/Shape3D;

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Shape3D;->Cylinder:Lcom/artfulbits/aiCharts/Enums/Shape3D;

    aput-object v1, v0, v3

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Shape3D;->Pyramid:Lcom/artfulbits/aiCharts/Enums/Shape3D;

    aput-object v1, v0, v4

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Shape3D;->Cone:Lcom/artfulbits/aiCharts/Enums/Shape3D;

    aput-object v1, v0, v5

    sput-object v0, Lcom/artfulbits/aiCharts/Enums/Shape3D;->a:[Lcom/artfulbits/aiCharts/Enums/Shape3D;

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

.method public static valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Enums/Shape3D;
    .locals 1

    const-class v0, Lcom/artfulbits/aiCharts/Enums/Shape3D;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Enums/Shape3D;

    return-object v0
.end method

.method public static values()[Lcom/artfulbits/aiCharts/Enums/Shape3D;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Shape3D;->a:[Lcom/artfulbits/aiCharts/Enums/Shape3D;

    invoke-virtual {v0}, [Lcom/artfulbits/aiCharts/Enums/Shape3D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Enums/Shape3D;

    return-object v0
.end method
