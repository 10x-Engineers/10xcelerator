class c_1891_1;
    integer i = -314;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1891_1;
    c_1891_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01xz0z001zx0zz0z1zxzx1zzxx1xxzzxzxxzxzzzzxzxzzzzxxxzxxzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
