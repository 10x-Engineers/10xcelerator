class c_1564_1;
    integer i = -259;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1564_1;
    c_1564_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100xzxxzz110zxz01x1zx0x11x0zzzzxzzxzzxxxzxxzxzxzzxxxzxxzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
