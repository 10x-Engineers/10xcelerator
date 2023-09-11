class c_1417_1;
    integer i = -235;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1417_1;
    c_1417_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz000zx11z0zz0x0zx11zzx11z1xz11zxzzzxxzzzxzzxxxxxzzxxxzxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
