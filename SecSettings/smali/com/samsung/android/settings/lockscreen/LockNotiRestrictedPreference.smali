.class public Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;
.super Lcom/android/settings/SecDropDownPreference;
.source "LockNotiRestrictedPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;,
        Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;,
        Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedArrayItemAdapter;,
        Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    }
.end annotation


# instance fields
.field private final mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mRestrictedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

.field private mUserClicked:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mSpinner:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mUserClicked:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mUserClicked:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->isRestrictedForEntry(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->isUserClicked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Ljava/lang/CharSequence;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;I)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getRestrictedItemForPosition(I)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setUserClicked(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mRestrictedItems:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mUserClicked:Z

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;-><init>(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getSpinner()Landroid/widget/Spinner;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mSpinner:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

    new-instance v0, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    return-void
.end method

.method private getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;->entryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v3
.end method

.method private getRestrictedItemForPosition(I)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, p1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    move-result-object v1

    return-object v1
.end method

.method private isRestrictedForEntry(Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;->entry:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_2
    return v3
.end method

.method private isUserClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mUserClicked:Z

    return v0
.end method

.method private setUserClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mUserClicked:Z

    return-void
.end method


# virtual methods
.method public addRestrictedItem(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearRestrictedItems()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedArrayItemAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedArrayItemAdapter;-><init>(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/Spinner;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

    move-result-object v0

    return-object v0
.end method

.method protected createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SecDropDownPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mSpinner:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->setPreference(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mSpinner:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v1, 0x7f0a06ff

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->isDisabledByAdmin()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public performClick()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mPreClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mPreClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Landroid/support/v7/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mUserClicked:Z

    invoke-super {p0}, Lcom/android/settings/SecDropDownPreference;->performClick()V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    return-void
.end method

.method public setOnPreClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->mPreClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
