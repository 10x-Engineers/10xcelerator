class c_2437_1;
    integer i = -405;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2437_1;
    c_2437_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzzxzz0z1zxzz1z0xx100xxz10011zxxxxzxzzxxxxzzzzxzzzzxxzxxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
