class c_1611_1;
    integer i = -267;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1611_1;
    c_1611_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zzx1zz1000zz00zx0111zzx0x1101xzxzzxxzxxzxxxzzzzxxzxzxzzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
