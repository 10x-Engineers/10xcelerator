class c_2015_1;
    integer i = -334;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2015_1;
    c_2015_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110zzx1zxzx000z100xxzxz01zxz1z0xzxxxxxxxxzzzzzxxzxzzxzzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
