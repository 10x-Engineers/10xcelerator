class c_246_1;
    integer i = -39;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_246_1;
    c_246_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0001010100000z0zzzxx0z101101x0zxzzzzxzxzxzxxxxzzzzzzxzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
