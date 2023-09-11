class c_2025_1;
    integer i = -336;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2025_1;
    c_2025_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxz1xz1x1z01z0xx11z0zx011zz1xx1xxxxxxzxzzzzzzzzzzxzzzxxzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
