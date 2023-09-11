class c_2426_1;
    integer i = -403;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2426_1;
    c_2426_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxx100zx00xx0xx1011x1z1zzz0x01zzxzxxxzzzxxzxzxzzxzzxxxxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
