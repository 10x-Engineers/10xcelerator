class c_2573_1;
    integer i = -427;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2573_1;
    c_2573_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011zzz0xz0z1z010zx1xxzx111x0x0xzxzzzxxxxxzzxzzxxzzzxxzzxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
