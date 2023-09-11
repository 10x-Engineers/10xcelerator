class c_1691_1;
    integer i = -280;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1691_1;
    c_1691_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x10z110z0011z1xxz00zx1zz1z101zzzxzxxzxzxzxzzzxxzxxzzzxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
