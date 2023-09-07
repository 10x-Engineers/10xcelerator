class c_2401_1;
    integer i = -399;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2401_1;
    c_2401_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zxz11z000x0zx1x011zz0z1x0zx1zzzzzxzxzxzxzxxzxzxxxzxxxxxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
