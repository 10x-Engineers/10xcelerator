class c_1287_1;
    integer i = -213;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1287_1;
    c_1287_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zzxzxx1zzz0z11xxx10x00xzxxxzx1zzzxxxxxzxxxxxxzzzxzzzzxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
