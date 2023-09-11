class c_758_1;
    integer i = -125;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_758_1;
    c_758_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zzzxzzzz00x0z1zx0xxxxzx0011x11zzxxzxzzxxxxzzzzzzzzxxxzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
