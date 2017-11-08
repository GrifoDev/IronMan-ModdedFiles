.class public Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;
.super Landroid/preference/Preference;
.source "FullScreenAppsShowTypePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFullScreenAppsSettingsHandler:Landroid/os/Handler;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mSelectedShowType:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mTypes:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mFullScreenAppsSettingsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSelectedShowType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mFullScreenAppsSettingsHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference$1;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->setShowTypeList()V

    const v0, 0x7f040128

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->setLayoutResource(I)V

    return-void
.end method

.method private setShowTypeList()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mTypes:[Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mTypes:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b06c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mTypes:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b06c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 4

    const v3, 0x7f040129

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mTypes:[Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v0, 0x7f110420

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0217

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSelectedShowType:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mFullScreenAppsSettingsHandler:Landroid/os/Handler;

    return-void
.end method
