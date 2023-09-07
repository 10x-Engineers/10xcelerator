class c_228_1;
    integer i = -36;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_228_1;
    c_228_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00xxxz00zxx1xzx1zz00000xxz1zzxxzxxxxxzzzzzzxzxxzzxxzxzxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
