class c_1489_1;
    integer i = -247;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1489_1;
    c_1489_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101zz10xzxzzx1z1zxx00zz11111z1z0xzxzzzzxxxzxxxzxzzzzxxzxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
