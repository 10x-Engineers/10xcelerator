class c_2825_1;
    integer i = -469;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2825_1;
    c_2825_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1zz01xxx110z01x01zx001zx0xzz0zzzzzzxxzzzxzxzzzxxxxxzzxxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
