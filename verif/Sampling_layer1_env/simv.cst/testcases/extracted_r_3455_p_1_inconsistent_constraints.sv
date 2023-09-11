class c_3455_1;
    integer i = -574;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3455_1;
    c_3455_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1x110z10x0z1xxx110z0xzx1xx0xzxxxxxzzzzxxxxzxzzxzzzzzxxxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
