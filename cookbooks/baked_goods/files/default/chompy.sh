#!/bin/bash
# chompy.sh - Cookie Consumption Protocol
# Version: 3.14

set -e  # Exit if cookies are unavailable (tragic scenario)

echo "🦖 COOKIE CONSUMPTION ENGINE v3.14 🦖"
echo "=============================================="
echo ""

# Cookie detection and inventory system
detect_cookies() {
    echo "👀 SCANNING FOR AVAILABLE COOKIES..."
    echo "======================================"
    
    local cookie_types=("chocolate chip")
    local detected_cookies=()
    
    for cookie in "${cookie_types[@]}"; do
        # Simulate cookie detection with random chance
        if (( RANDOM % 3 == 0 )); then
            detected_cookies+=("$cookie")
            echo "📍 ${cookie} cookies: DETECTED"
        else
            echo "❌ ${cookie} cookies: NOT FOUND"
        fi
        sleep 0.3
    done
    
    if [[ ${#detected_cookies[@]} -eq 0 ]]; then
        echo ""
        echo "💔 FATAL ERROR: No cookies detected in immediate vicinity!"
        echo "   Please acquire cookies and retry operation."
        echo "   Chompy cannot function without cookies for fuel."
        exit 1
    fi
    
    echo ""
    echo "✅ Cookie inventory complete! Found ${#detected_cookies[@]} cookie varieties."
    echo "🎯 Targeting: ${detected_cookies[*]}"
}

# Pre-consumption safety protocols
safety_check() {
    echo ""
    echo "🛡️  PRE-CONSUMPTION SAFETY PROTOCOLS"
    echo "===================================="
    
    echo "⚠️  Checking milk availability for emergency dunking..."
    read -p "Is milk present and ready for deployment? (y/n): " milk_status
    
    if [[ "$milk_status" != "y" ]]; then
        echo "⚠️  WARNING: Operating without milk backup!"
        echo "   Proceeding with DRY CONSUMPTION mode..."
    else
        echo "✅ Milk systems: ONLINE"
    fi
}

# The main consumption sequence
commence_chomping() {
    echo ""
    echo "🍪 INITIATING COOKIE CONSUMPTION SEQUENCE"
    echo "========================================"
    
    local cookies_consumed=0
    local max_cookies=$((RANDOM % 5 + 3))  # Random between 3-7 cookies
    
    echo "🎯 Mission parameters: Consume up to ${max_cookies} cookies"
    echo ""
    
    while (( cookies_consumed < max_cookies )); do
        ((cookies_consumed++))
        
        echo "🍪 COOKIE #${cookies_consumed} ACQUISITION IN PROGRESS..."
        echo "   Step 1: Reaching for cookie with precision grip..."
        sleep 0.8
        
        echo "   Step 2: Visual inspection for optimal bite location..."
        sleep 0.6
        
        echo "   Step 3: ENGAGING CHOMPING PROTOCOL!"
        
        # Simulate chomping sounds
        chomp_sounds=("CHOMP!" "OM!" "NOM!" "CRONCH!")
        sound=${chomp_sounds[$((RANDOM % ${#chomp_sounds[@]}))]}

        echo "$sound"
        
        # Random pause between cookies
        sleep $(echo "scale=1; $RANDOM/32767 * 1.5 + 0.5" | bc 2>/dev/null || echo "1")

        # Occasional commentary
        if (( i % 3 == 0 )); then
            comments=("sluuurp" "*happy sigh*" "*checks for more*" "*pats belly*" "mmm")
            echo "   ${comments[$((RANDOM % ${#comments[@]}))]}"
        fi
    done


        echo "   ✨ Cookie #${cookies_consumed}: SUCCESSFULLY CONSUMED"