class c_2607_1;
    integer i = -433;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2607_1;
    c_2607_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11010zx1x1z00011zzz1z0zx1x0zzxzxzxxzxzxzxzxxzzzzzzxxzzxzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
