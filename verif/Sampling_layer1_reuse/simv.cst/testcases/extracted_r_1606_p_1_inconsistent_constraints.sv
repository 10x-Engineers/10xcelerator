class c_1606_1;
    integer i = -266;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1606_1;
    c_1606_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101z1z000zz010zx1x011xz0x01x1x0xzxzxxxzxzzxxxzxxxzxxxzxzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
