class c_1648_1;
    integer i = -273;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1648_1;
    c_1648_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzxx00z1x000z1zxz1x1xzxxz011xx0zzxxxxxzxzxzxxzxxxzzzzxzxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
