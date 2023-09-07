class c_739_1;
    integer i = -122;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_739_1;
    c_739_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1100xzz10xzz1zz0zxxxzx010zxz1z0xzzzxxzxxxxxxxzzzzxzzzzxxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
