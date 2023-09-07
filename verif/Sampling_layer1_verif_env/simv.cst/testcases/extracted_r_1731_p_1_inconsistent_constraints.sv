class c_1731_1;
    integer i = -287;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1731_1;
    c_1731_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011x1xz0x1xxxxz1z0x1xzx0zzx00011xxzzxzzxxzxxzzzxxxxzzxxzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
