class c_1779_1;
    integer i = -295;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1779_1;
    c_1779_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0000101z1x101xz100zzx10zx1zz1z0xxxxxzzzzzxxzzxxzxzzxxxzxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
