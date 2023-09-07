class c_3333_1;
    integer i = -554;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3333_1;
    c_3333_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z100xxz0zx00xxz1000xx1zz1xx1xzzzzxzzxzzzzzzxxxxzxzxzzzxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
