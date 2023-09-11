class c_2590_1;
    integer i = -430;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2590_1;
    c_2590_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0101z0zxx1x1xx0zx0zzxxzx1x10x0xzxxzzxxxxzzzzxzxxxzzxxxxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
