class c_1193_1;
    integer i = -197;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1193_1;
    c_1193_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xx1z110z1x10z1zx00zx010z0z001xxxxzxxxzzzxzxzzzzxzxxxxzzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
