class c_1372_1;
    integer i = -227;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1372_1;
    c_1372_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz0zzzzzz0z01zzxzxz1zxzx1xx10xzxzxxxzxzzzzxzxxxzxxzxxzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
